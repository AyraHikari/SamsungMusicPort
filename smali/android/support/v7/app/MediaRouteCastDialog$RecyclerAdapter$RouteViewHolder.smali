.class Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RouteViewHolder"
.end annotation


# instance fields
.field mCheckBox:Landroid/widget/CheckBox;

.field mImageView:Landroid/widget/ImageView;

.field mTextView:Landroid/widget/TextView;

.field mVolumeSlider:Landroid/support/v7/app/MediaRouteVolumeSlider;

.field final synthetic this$1:Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;Landroid/view/View;)V
    .locals 0

    .line 733
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->this$1:Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;

    .line 734
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 735
    sget p1, Landroid/support/v7/mediarouter/R$id;->mr_cast_route_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 736
    sget p1, Landroid/support/v7/mediarouter/R$id;->mr_cast_route_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->mTextView:Landroid/widget/TextView;

    .line 737
    sget p1, Landroid/support/v7/mediarouter/R$id;->mr_cast_checkbox:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 738
    sget p1, Landroid/support/v7/mediarouter/R$id;->mr_cast_volume_slider:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/app/MediaRouteVolumeSlider;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->mVolumeSlider:Landroid/support/v7/app/MediaRouteVolumeSlider;

    return-void
.end method


# virtual methods
.method public bindRouteViewHolder(Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$Item;)V
    .locals 2

    .line 742
    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$Item;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 744
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->this$1:Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;->getIconDrawable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 745
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->this$1:Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;->isSelectedRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 747
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->mVolumeSlider:Landroid/support/v7/app/MediaRouteVolumeSlider;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->this$1:Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;

    iget-object v1, v1, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    iget v1, v1, Landroid/support/v7/app/MediaRouteCastDialog;->mVolumeSliderColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setColor(I)V

    .line 748
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->mVolumeSlider:Landroid/support/v7/app/MediaRouteVolumeSlider;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setTag(Ljava/lang/Object;)V

    .line 749
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->mVolumeSlider:Landroid/support/v7/app/MediaRouteVolumeSlider;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolume()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setProgress(I)V

    .line 750
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->mVolumeSlider:Landroid/support/v7/app/MediaRouteVolumeSlider;

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->this$1:Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteCastDialog;->mVolumeChangeListener:Landroid/support/v7/app/MediaRouteCastDialog$VolumeChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method
