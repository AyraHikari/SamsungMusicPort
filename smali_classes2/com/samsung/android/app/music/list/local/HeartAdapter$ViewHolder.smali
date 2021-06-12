.class public final Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;
.super Lcom/samsung/android/app/music/list/common/GridViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/HeartAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1098
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/common/GridViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    .line 1101
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;->b()Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1102
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1103
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 1105
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;->c()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1106
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1107
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 1109
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;->a()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
