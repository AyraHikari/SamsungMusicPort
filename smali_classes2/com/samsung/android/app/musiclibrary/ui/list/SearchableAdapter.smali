.class public abstract Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;,
        Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;",
        ">",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Landroid/util/SparseIntArray;

.field private final d:Landroid/util/SparseIntArray;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 40
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->c:Landroid/util/SparseIntArray;

    .line 42
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->d:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->f:I

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->m:Z

    .line 66
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->a(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->a:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->b(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->b:Z

    .line 68
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;->c(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->n:Z

    return-void
.end method

.method private a(II)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->b:Z

    return p0
.end method

.method private d(I)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->d:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 276
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->d:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method


# virtual methods
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

    .line 111
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->context:Landroid/content/Context;

    sget v5, Lcom/samsung/android/app/musiclibrary/R$string;->tracks:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 112
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    .line 111
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    const-string v3, "%s (%d)"

    .line 107
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->context:Landroid/content/Context;

    sget v5, Lcom/samsung/android/app/musiclibrary/R$string;->albums:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 108
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    .line 107
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    const-string v3, "%s (%d)"

    .line 103
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->context:Landroid/content/Context;

    sget v5, Lcom/samsung/android/app/musiclibrary/R$string;->artists:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 104
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    .line 103
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 174
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->h:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->m:Z

    if-eqz p2, :cond_0

    const-string v0, "<unknown>"

    .line 177
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    sget p2, Lcom/samsung/android/app/musiclibrary/R$string;->unknown_artist:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p1, 0x1

    .line 179
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->m:Z

    :cond_1
    return-object p2
.end method

.method public a(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 194
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->j:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 73
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 74
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->getItemViewType(I)I

    move-result v0

    if-lez v0, :cond_2

    .line 75
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->b:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 78
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->d(Landroid/database/Cursor;)I

    move-result v0

    .line 79
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->c:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 82
    iget-object p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->a(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 86
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->b:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->context:Landroid/content/Context;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_header:I

    .line 88
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->a:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 94
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->e:Ljava/lang/String;

    return-void
.end method

.method public b(I)I
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->d:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 185
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->i:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "<unknown>"

    .line 187
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    sget p2, Lcom/samsung/android/app/musiclibrary/R$string;->unknown_album:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method public b(Landroid/database/Cursor;)V
    .locals 5

    .line 206
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->b:Z

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 215
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v1, "index_grouporder"

    .line 220
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const-string v2, "index_counts"

    .line 221
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

    .line 241
    :goto_1
    array-length v3, v1

    if-ge p1, v3, :cond_7

    .line 242
    aget v3, v1, p1

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 252
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->c:Landroid/util/SparseIntArray;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 253
    aget v3, v0, p1

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->a(II)V

    goto :goto_2

    .line 248
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->c:Landroid/util/SparseIntArray;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 249
    aget v3, v0, p1

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->a(II)V

    goto :goto_2

    .line 244
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->c:Landroid/util/SparseIntArray;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 245
    aget v3, v0, p1

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->a(II)V

    .line 258
    :goto_2
    aget v3, v0, p1

    add-int/2addr v2, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 225
    :cond_3
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 227
    :cond_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->d(Landroid/database/Cursor;)I

    move-result v0

    if-gez v0, :cond_5

    goto :goto_4

    .line 231
    :cond_5
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->d(I)V

    .line 232
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->c:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v2, v1, :cond_6

    .line 233
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 234
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 236
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

.method protected b(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;I)V
    .locals 6

    .line 120
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->e:Ljava/lang/String;

    .line 122
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;

    .line 123
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->b:Z

    const/16 v3, 0xd

    const/16 v4, 0xc

    const/16 v5, 0xb

    if-eqz v2, :cond_2

    .line 124
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->d(Landroid/database/Cursor;)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 126
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_1

    .line 128
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->b(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-ne v2, v3, :cond_3

    .line 130
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 136
    :cond_3
    :goto_0
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;

    .line 137
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->b:Z

    if-eqz v1, :cond_6

    .line 138
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->d(Landroid/database/Cursor;)I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 140
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->l:I

    if-eq v0, v1, :cond_7

    .line 141
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->k:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 142
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->l:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 143
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->m:Z

    .line 144
    invoke-static {v1, v0, p2, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object p2

    .line 143
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    if-ne v1, v4, :cond_5

    .line 147
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    if-ne v1, v3, :cond_7

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->b(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 152
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->b(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public c(I)J
    .locals 2

    .line 315
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 316
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 317
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->f:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method protected c(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 292
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->g:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "audio/"

    :cond_0
    return-object p1
.end method

.method public d(Landroid/database/Cursor;)I
    .locals 1

    .line 300
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->c(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "artist"

    .line 301
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xb

    return p1

    :cond_0
    const-string v0, "album"

    .line 303
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0xc

    return p1

    :cond_1
    const-string v0, "audio/"

    .line 305
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "application/ogg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "application/x-ogg"

    .line 306
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1

    :cond_3
    :goto_0
    const/16 p1, 0xd

    return p1
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1

    .line 158
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->initColIndex(Landroid/database/Cursor;)V

    .line 159
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "mime_type"

    .line 160
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->g:I

    const-string v0, "data1"

    .line 161
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->k:I

    const-string v0, "data2"

    .line 162
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->l:I

    :cond_0
    const-string v0, "artist"

    .line 165
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->h:I

    const-string v0, "album"

    .line 166
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->i:I

    const-string v0, "title"

    .line 167
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->j:I

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->f:I

    :cond_1
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 28
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 28
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;I)V

    return-void
.end method

.method protected synthetic onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 28
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->b(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;I)V

    return-void
.end method
