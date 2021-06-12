.class public abstract Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "TVH;>;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private b:Landroid/view/View$OnLongClickListener;

.field private c:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 56
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p1
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected a(Landroid/view/View;I)V
    .locals 0

    .line 92
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->notifyItemChanged(I)V

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->b(Landroid/view/View;I)V

    return-void
.end method

.method public abstract a(I)Z
.end method

.method protected b(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public abstract b(I)Z
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAttachedToRecyclerView : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->c:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->b(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 47
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->b:Landroid/view/View$OnLongClickListener;

    if-eqz p2, :cond_3

    .line 48
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->b:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setLongClickable(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 85
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v2

    .line 86
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->a(Landroid/view/View;I)V

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick : position - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", aPos - "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", lPos - "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onDetachedFromRecyclerView : "

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->c:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method
