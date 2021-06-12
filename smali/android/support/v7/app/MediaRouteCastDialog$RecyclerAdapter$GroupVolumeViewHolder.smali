.class Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$GroupVolumeViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupVolumeViewHolder"
.end annotation


# instance fields
.field mGroupVolumeSlider:Landroid/support/v7/app/MediaRouteVolumeSlider;

.field mTextView:Landroid/widget/TextView;

.field final synthetic this$1:Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;Landroid/view/View;)V
    .locals 0

    .line 695
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$GroupVolumeViewHolder;->this$1:Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;

    .line 696
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 697
    sget p1, Landroid/support/v7/mediarouter/R$id;->mr_group_volume_route_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$GroupVolumeViewHolder;->mTextView:Landroid/widget/TextView;

    .line 698
    sget p1, Landroid/support/v7/mediarouter/R$id;->mr_group_volume_slider:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/app/MediaRouteVolumeSlider;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$GroupVolumeViewHolder;->mGroupVolumeSlider:Landroid/support/v7/app/MediaRouteVolumeSlider;

    return-void
.end method


# virtual methods
.method public bindGroupVolumeView(Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$Item;)V
    .locals 2

    .line 702
    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$Item;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 704
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$GroupVolumeViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$GroupVolumeViewHolder;->mGroupVolumeSlider:Landroid/support/v7/app/MediaRouteVolumeSlider;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$GroupVolumeViewHolder;->this$1:Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;

    iget-object v1, v1, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    iget v1, v1, Landroid/support/v7/app/MediaRouteCastDialog;->mVolumeSliderColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setColor(I)V

    .line 706
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$GroupVolumeViewHolder;->mGroupVolumeSlider:Landroid/support/v7/app/MediaRouteVolumeSlider;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setTag(Ljava/lang/Object;)V

    .line 707
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$GroupVolumeViewHolder;->mGroupVolumeSlider:Landroid/support/v7/app/MediaRouteVolumeSlider;

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$GroupVolumeViewHolder;->this$1:Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteCastDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setProgress(I)V

    .line 708
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$GroupVolumeViewHolder;->mGroupVolumeSlider:Landroid/support/v7/app/MediaRouteVolumeSlider;

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter$GroupVolumeViewHolder;->this$1:Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteCastDialog$RecyclerAdapter;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteCastDialog;->mVolumeChangeListener:Landroid/support/v7/app/MediaRouteCastDialog$VolumeChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method
