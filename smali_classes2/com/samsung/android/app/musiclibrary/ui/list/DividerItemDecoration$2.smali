.class Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexViewVisibleChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->b(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_index_view_margin_end:I

    .line 195
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 194
    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->b(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;I)I

    .line 196
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidateItemDecorations()V

    goto :goto_0

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->b(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;I)I

    .line 199
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidateItemDecorations()V

    :goto_0
    return-void
.end method
