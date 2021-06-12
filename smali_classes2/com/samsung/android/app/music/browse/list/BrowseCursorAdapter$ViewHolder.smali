.class public Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;Landroid/view/View;I)V
    .locals 3

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    const p3, 0x7f130163

    .line 154
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;->a:Landroid/view/View;

    .line 157
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->b(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;)I

    move-result p3

    if-eq p3, v0, :cond_0

    const p3, 0x7f13015f

    .line 158
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 160
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 161
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 165
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->c(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;)Landroid/util/SparseArray;

    move-result-object p3

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    .line 166
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->c(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 167
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->c(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 168
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 170
    new-instance v2, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder$1;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder$1;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;ILandroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;->a:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method protected initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
            "*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 193
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    const/4 p1, 0x0

    .line 194
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
