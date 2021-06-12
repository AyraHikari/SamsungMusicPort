.class public Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;,
        Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/list/LoadMoreManager;

.field private final b:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private e:I


# direct methods
.method protected constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->e:I

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/samsung/android/app/music/list/LoadMoreManager;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/music/list/LoadMoreManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->a:Lcom/samsung/android/app/music/list/LoadMoreManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->a:Lcom/samsung/android/app/music/list/LoadMoreManager;

    .line 49
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->b:I

    .line 50
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->b(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->c:Landroid/util/SparseArray;

    .line 51
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->c(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->text2Index:I

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->text1Index:I

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;)Landroid/util/SparseArray;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->c:Landroid/util/SparseArray;

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;
    .locals 2

    if-nez p3, :cond_0

    .line 67
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->b:I

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 70
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->b(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;ILandroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    .line 120
    iget-object p2, p1, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->text1Index:I

    if-eq p2, v0, :cond_0

    .line 121
    iget p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->text1Index:I

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    .line 123
    :goto_0
    iget-object p1, p1, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->text2Index:I

    if-eq p1, v0, :cond_1

    .line 124
    iget p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->text2Index:I

    invoke-interface {p3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 129
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 132
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, ", "

    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;I)V
    .locals 2

    .line 79
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 81
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 82
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->getItemViewType(I)I

    move-result p2

    const/16 v1, -0x3eb

    if-eq p2, v1, :cond_0

    .line 92
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;->a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->e:I

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;Landroid/database/Cursor;)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->a:Lcom/samsung/android/app/music/list/LoadMoreManager;

    if-eqz p1, :cond_1

    .line 87
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->a:Lcom/samsung/android/app/music/list/LoadMoreManager;

    invoke-interface {p1}, Lcom/samsung/android/app/music/list/LoadMoreManager;->k_()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;Landroid/database/Cursor;)V
    .locals 2

    .line 100
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->e:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 101
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;->a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected b(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;
    .locals 0
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    new-instance p1, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;

    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;Landroid/view/View;I)V

    return-object p1
.end method

.method protected b(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;I)V
    .locals 2

    .line 107
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 112
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 113
    iget-object v1, p1, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->initColIndex(Landroid/database/Cursor;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->e:I

    :cond_0
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 29
    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 29
    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;I)V

    return-void
.end method

.method protected synthetic onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 29
    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->b(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;I)V

    return-void
.end method

.method protected synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
