.class Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$GroupViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupViewHolder"
.end annotation


# instance fields
.field mImageView:Landroid/widget/ImageView;

.field mTextView:Landroid/widget/TextView;

.field final synthetic this$1:Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;Landroid/view/View;)V
    .locals 0

    .line 758
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$GroupViewHolder;->this$1:Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;

    .line 759
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 760
    sget p1, Landroid/support/v7/mediarouter/R$id;->mr_cast_group_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$GroupViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 761
    sget p1, Landroid/support/v7/mediarouter/R$id;->mr_cast_group_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$GroupViewHolder;->mTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bindGroupViewHolder(Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$Item;)V
    .locals 2

    .line 765
    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$Item;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 767
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$GroupViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$GroupViewHolder;->this$1:Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;->getIconDrawable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 768
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$GroupViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
