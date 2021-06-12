.class Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RouteViewHolder"
.end annotation


# instance fields
.field mImageView:Landroid/widget/ImageView;

.field mItemView:Landroid/view/View;

.field mTextView:Landroid/widget/TextView;

.field final synthetic this$1:Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;Landroid/view/View;)V
    .locals 0

    .line 474
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder;->this$1:Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;

    .line 475
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 476
    iput-object p2, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder;->mItemView:Landroid/view/View;

    .line 477
    sget p1, Landroid/support/v7/mediarouter/R$id;->mr_picker_route_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder;->mTextView:Landroid/widget/TextView;

    .line 478
    sget p1, Landroid/support/v7/mediarouter/R$id;->mr_picker_route_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder;->mImageView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public bindRouteView(Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;)V
    .locals 2

    .line 482
    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 484
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder;->mItemView:Landroid/view/View;

    new-instance v1, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder$1;-><init>(Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder;->this$1:Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->getIconDrawable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
