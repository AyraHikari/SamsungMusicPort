.class public abstract Lcom/samsung/android/app/music/search/SearchableAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;,
        Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;",
        ">",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/util/SparseIntArray;

.field private final c:Landroid/util/SparseIntArray;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 35
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->b:Landroid/util/SparseIntArray;

    .line 37
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->c:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->e:I

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->l:Z

    .line 63
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;->a(Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->a:Ljava/lang/String;

    .line 64
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;->b(Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->m:Z

    .line 65
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;->c(Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->n:Z

    return-void
.end method

.method private a(II)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    const-string v0, "artist"

    .line 300
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0xb

    return p0

    :cond_0
    const-string v0, "album"

    .line 302
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0xc

    return p0

    :cond_1
    const-string v0, "audio/"

    .line 304
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "application/ogg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "application/x-ogg"

    .line 305
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0

    :cond_3
    :goto_0
    const/16 p0, 0xd

    return p0
.end method

.method private c(I)V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->c:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 264
    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->c:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)I
    .locals 0

    .line 295
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->d(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    .line 296
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->b(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected a(I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string v3, "%s (%d)"

    .line 105
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->context:Landroid/content/Context;

    const v5, 0x7f0b03da

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 106
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->f(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    .line 105
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    const-string v3, "%s (%d)"

    .line 101
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->context:Landroid/content/Context;

    const v5, 0x7f0b0082

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 102
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->f(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    .line 101
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    const-string v3, "%s (%d)"

    .line 97
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->context:Landroid/content/Context;

    const v5, 0x7f0b0091

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 98
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->f(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    .line 97
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 160
    iget v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->g:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->l:Z

    if-eqz p2, :cond_0

    const-string v0, "<unknown>"

    .line 163
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const p2, 0x7f0b042b

    .line 164
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p1, 0x1

    .line 165
    iput-boolean p1, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->l:Z

    :cond_1
    return-object p2
.end method

.method public a(Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 70
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->c(Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->d:Ljava/lang/String;

    return-void
.end method

.method public b(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 171
    iget v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->h:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "<unknown>"

    .line 173
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const p2, 0x7f0b042a

    .line 174
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method public b(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 180
    iget v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->i:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;I)V
    .locals 8

    .line 114
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->d:Ljava/lang/String;

    .line 117
    iget-object v1, p1, Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;

    .line 118
    iget-boolean v2, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->n:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->a(Landroid/database/Cursor;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/16 v4, 0xd

    const/16 v5, 0xc

    const/16 v6, 0xb

    if-ne v2, v6, :cond_1

    .line 120
    iget-object v7, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v7, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    if-ne v2, v5, :cond_2

    .line 122
    iget-object v7, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v7, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->b(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    if-ne v2, v4, :cond_3

    .line 124
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 127
    :cond_3
    :goto_1
    iget-object p1, p1, Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;

    if-ne v2, v6, :cond_4

    .line 129
    iget v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->j:I

    if-eq v0, v3, :cond_6

    iget v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->k:I

    if-eq v0, v3, :cond_6

    .line 130
    iget v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->j:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 131
    iget v1, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->k:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 132
    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->l:Z

    .line 133
    invoke-static {v1, v0, p2, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object p2

    .line 132
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    if-ne v2, v5, :cond_5

    .line 136
    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    if-ne v2, v4, :cond_6

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->b(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    return-void
.end method

.method protected b(I)Z
    .locals 1

    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/database/Cursor;)V
    .locals 5

    if-eqz p1, :cond_8

    .line 192
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 202
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v1, "index_grouporder"

    .line 207
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const-string v2, "index_counts"

    .line 208
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    const/4 v2, 0x0

    .line 229
    :goto_1
    array-length v3, v1

    if-ge p1, v3, :cond_7

    .line 230
    aget v3, v1, p1

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 240
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->b:Landroid/util/SparseIntArray;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 241
    aget v3, v0, p1

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/music/search/SearchableAdapter;->a(II)V

    goto :goto_2

    .line 236
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->b:Landroid/util/SparseIntArray;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 237
    aget v3, v0, p1

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/music/search/SearchableAdapter;->a(II)V

    goto :goto_2

    .line 232
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->b:Landroid/util/SparseIntArray;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 233
    aget v3, v0, p1

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/music/search/SearchableAdapter;->a(II)V

    .line 246
    :goto_2
    aget v3, v0, p1

    add-int/2addr v2, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 212
    :cond_3
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 214
    :cond_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->a(Landroid/database/Cursor;)I

    move-result v0

    .line 215
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 216
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->getItemViewType(I)I

    move-result v2

    if-gez v2, :cond_5

    goto :goto_4

    .line 220
    :cond_5
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/search/SearchableAdapter;->c(I)V

    .line 221
    iget-object v2, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->b:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v3, v2, :cond_6

    .line 222
    iget-object v2, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 224
    :cond_6
    :goto_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_7
    return-void

    :cond_8
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected c(Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->getItemViewType(I)I

    move-result v0

    .line 76
    iget-boolean v1, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->m:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/search/SearchableAdapter;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 78
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->a(Landroid/database/Cursor;)I

    move-result p2

    .line 79
    iget-object v0, p1, Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 80
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->a(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 82
    iget-object v0, p1, Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p1, p1, Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;->d:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0b03f4

    .line 84
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 83
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public d(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->n:Z

    if-eqz v0, :cond_1

    .line 283
    iget v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->f:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "audio/"

    :cond_0
    return-object p1

    .line 281
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MimeType is not supported!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Z
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->n:Z

    return v0
.end method

.method public e()I
    .locals 1

    .line 322
    iget v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->e:I

    return v0
.end method

.method public e(I)I
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->b:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public f()I
    .locals 1

    const/16 v0, 0xd

    .line 326
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/search/SearchableAdapter;->f(I)I

    move-result v0

    return v0
.end method

.method public f(I)I
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->c:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public g(I)J
    .locals 2

    .line 314
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 315
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 316
    iget v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->e:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1

    .line 144
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->initColIndex(Landroid/database/Cursor;)V

    .line 145
    iget-boolean v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->n:Z

    if-eqz v0, :cond_0

    const-string v0, "mime_type"

    .line 146
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->f:I

    :cond_0
    const-string v0, "data1"

    .line 148
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->j:I

    const-string v0, "data2"

    .line 149
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->k:I

    const-string v0, "artist"

    .line 151
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->g:I

    const-string v0, "album"

    .line 152
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->h:I

    const-string v0, "title"

    .line 153
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->i:I

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/search/SearchableAdapter;->e:I

    :cond_1
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 25
    check-cast p1, Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->a(Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 25
    check-cast p1, Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->a(Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;I)V

    return-void
.end method

.method protected synthetic onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 25
    check-cast p1, Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->b(Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;I)V

    return-void
.end method
