.class public final Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/view/View;

.field public d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->a:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "itemView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->a:Landroid/view/View;

    return-void
.end method

.method public final a(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->b:Landroid/widget/ImageView;

    return-void
.end method

.method public final a(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->d:Landroid/widget/TextView;

    return-void
.end method

.method public final b()Landroid/widget/ImageView;
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "thumbnail"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final b(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->c:Landroid/view/View;

    return-void
.end method

.method public final b(Landroid/widget/TextView;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->e:Landroid/widget/TextView;

    return-void
.end method

.method public final c()Landroid/view/View;
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->c:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "thumbnailClickArea"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final d()Landroid/widget/TextView;
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->d:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "mainText"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final e()Landroid/widget/TextView;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public final f()Landroid/view/View;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->f:Landroid/view/View;

    return-object v0
.end method

.method public final g()Landroid/view/View;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->g:Landroid/view/View;

    return-object v0
.end method

.method public final h()Landroid/view/View;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->h:Landroid/view/View;

    return-object v0
.end method

.method public setViewEnabled(Z)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->a:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "itemView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/view/View;Z)V

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->a:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v1, "itemView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->c:Landroid/view/View;

    if-nez v0, :cond_2

    const-string v1, "thumbnailClickArea"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->c:Landroid/view/View;

    if-nez v0, :cond_3

    const-string v1, "thumbnailClickArea"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;->f:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    return-void
.end method
