.class public Lcom/samsung/android/app/music/list/common/GridViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
            "*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    const p1, 0x7f130161

    .line 14
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/GridViewHolder;->a:Landroid/view/View;

    const p1, 0x7f1301d0

    .line 15
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/GridViewHolder;->b:Landroid/widget/TextView;

    const p1, 0x7f1301d1

    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/GridViewHolder;->c:Landroid/widget/TextView;

    const p1, 0x7f13044e

    .line 17
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/GridViewHolder;->d:Landroid/widget/TextView;

    const p1, 0x7f130192

    .line 18
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/GridViewHolder;->e:Landroid/view/View;

    .line 24
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-string p3, "itemView.animate()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 25
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/GridViewHolder;->thumbnailView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    .line 26
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 27
    new-instance p3, Lcom/samsung/android/app/music/list/common/GridViewHolder$1$1;

    invoke-direct {p3, p1}, Lcom/samsung/android/app/music/list/common/GridViewHolder$1$1;-><init>(Landroid/widget/ImageView;)V

    check-cast p3, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p2, p3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/GridViewHolder;->a:Landroid/view/View;

    return-object v0
.end method

.method public final b()Landroid/widget/TextView;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/GridViewHolder;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public final c()Landroid/widget/TextView;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/GridViewHolder;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public final d()Landroid/widget/TextView;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/GridViewHolder;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public final e()Landroid/view/View;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/GridViewHolder;->e:Landroid/view/View;

    return-object v0
.end method

.method protected getContentDescription()Ljava/lang/CharSequence;
    .locals 12

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/GridViewHolder;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/TextViewExtensionKt;->b(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/GridViewHolder;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/TextViewExtensionKt;->b(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_4

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    check-cast v2, Ljava/lang/CharSequence;

    return-object v2
.end method
