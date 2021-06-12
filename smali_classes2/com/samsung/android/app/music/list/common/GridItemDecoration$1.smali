.class public final Lcom/samsung/android/app/music/list/common/GridItemDecoration$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/GridItemDecoration;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/common/GridItemDecorator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/common/GridItemDecoration;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration$1;->a:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 6

    .line 81
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration$1;->a:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->e(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getMeasuredWidth()I

    move-result p1

    .line 83
    iget-object p2, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration$1;->a:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->f(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eqz p2, :cond_1

    .line 85
    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration$1;->a:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {v3, v2}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->b(Lcom/samsung/android/app/music/list/common/GridItemDecoration;I)V

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration$1;->a:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->g(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 88
    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration$1;->a:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->g(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)I

    move-result v2

    goto :goto_1

    .line 90
    :cond_2
    sget-object v2, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->b:Lcom/samsung/android/app/music/list/common/GridItemDecoration$Companion;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration$1;->a:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->h(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration$1;->a:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {v4}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->i(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration$1;->a:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {v5}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->j(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)I

    move-result v5

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/samsung/android/app/music/list/common/GridItemDecoration$Companion;->b(IIII)I

    move-result v2

    .line 93
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration$1;->a:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->k(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;->getSpanCount()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration$1;->a:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->k(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;->setSpanCount(I)V

    const/4 v0, 0x1

    .line 98
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration$1;->a:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {v2, p1}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->a(Lcom/samsung/android/app/music/list/common/GridItemDecoration;I)V

    .line 100
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration$1;->a:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->a(Lcom/samsung/android/app/music/list/common/GridItemDecoration;Z)V

    .line 102
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration$1;->a:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->l(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez p2, :cond_4

    if-eqz v0, :cond_6

    .line 103
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration$1;->a:Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->e(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    instance-of p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->safeNotifyDataSetChanged()V

    :cond_6
    return-void
.end method
