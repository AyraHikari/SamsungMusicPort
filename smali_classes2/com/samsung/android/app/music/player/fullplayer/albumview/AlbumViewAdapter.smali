.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0xffL
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/database/Cursor;

.field private final g:Landroid/view/ViewGroup;

.field private final h:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parentView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentHolderAlpha"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->g:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->h:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x1

    .line 167
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->setHasStableIds(Z)V

    const/16 p1, 0xff

    .line 171
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->a:I

    .line 177
    sget-object p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/EmptyCursor;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/EmptyCursor;

    check-cast p1, Landroid/database/Cursor;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->f:Landroid/database/Cursor;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;)I
    .locals 0

    .line 162
    iget p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->b:I

    return p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;)I
    .locals 0

    .line 162
    iget p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->d:I

    return p0
.end method


# virtual methods
.method public final a()Landroid/database/Cursor;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->f:Landroid/database/Cursor;

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f040094

    const/4 v1, 0x0

    .line 192
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 193
    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final a(I)V
    .locals 0

    .line 171
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->a:I

    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->f:Landroid/database/Cursor;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 180
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->f:Landroid/database/Cursor;

    const-string v0, "_id"

    .line 181
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->c:I

    const-string v0, "cp_attrs"

    .line 182
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->b:I

    const-string v0, "album_id"

    .line 183
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->d:I

    const-string v0, "audio_id"

    .line 184
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->e:I

    .line 229
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "SMUSIC-AlbumViewAdapter"

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change cursor to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->f:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cpAttrIdx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " albumIdIdx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object p1, p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->itemView:Landroid/view/View;

    const-string v0, "holder.itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->h:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;I)V
    .locals 0

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->f:Landroid/database/Cursor;

    invoke-interface {p3, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 242
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "SMUSIC-AlbumViewAdapter"

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " width: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->g:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->a()Landroid/database/Cursor;

    move-result-object p2

    invoke-static {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 256
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->a()Landroid/database/Cursor;

    move-result-object p3

    invoke-static {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->b(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 206
    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->a(IJ)V

    .line 207
    iget p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->a:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->a(I)V

    .line 208
    iget-object p1, p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->itemView:Landroid/view/View;

    const-string p2, "holder.itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->g:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->a(Landroid/view/View;I)V

    return-void

    .line 203
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to position cursor to: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public getItemCount()I
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->f:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->f:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 220
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->f:Landroid/database/Cursor;

    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->c:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 162
    check-cast p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 162
    check-cast p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public synthetic onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 162
    check-cast p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;)V

    return-void
.end method
