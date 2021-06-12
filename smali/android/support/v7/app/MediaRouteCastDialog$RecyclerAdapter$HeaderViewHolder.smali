.class Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$HeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field mTextView:Landroid/widget/TextView;

.field final synthetic this$1:Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;Landroid/view/View;)V
    .locals 0

    .line 715
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$HeaderViewHolder;->this$1:Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;

    .line 716
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 717
    sget p1, Landroid/support/v7/mediarouter/R$id;->mr_dialog_header_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$HeaderViewHolder;->mTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bindHeaderViewHolder(Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$Item;)V
    .locals 1

    .line 721
    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$Item;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 723
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$HeaderViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
