.class Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeGroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/support/v7/media/MediaRouter$RouteInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mDisabledAlpha:F

.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;)V"
        }
    .end annotation

    .line 1282
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    const/4 p1, 0x0

    .line 1283
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1284
    invoke-static {p2}, Landroid/support/v7/app/MediaRouterThemeHelper;->getDisabledAlpha(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->mDisabledAlpha:F

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1296
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Landroid/support/v7/mediarouter/R$layout;->mr_controller_volume_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 1299
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {v1, p2}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateVolumeGroupItemHeight(Landroid/view/View;)V

    .line 1302
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz p1, :cond_5

    .line 1304
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v1

    .line 1306
    sget v2, Landroid/support/v7/mediarouter/R$id;->mr_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1307
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1308
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1310
    sget v2, Landroid/support/v7/mediarouter/R$id;->mr_volume_slider:I

    .line 1311
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/MediaRouteVolumeSlider;

    .line 1313
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v3, v3, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    .line 1312
    invoke-static {p3, v2, v3}, Landroid/support/v7/app/MediaRouterThemeHelper;->setVolumeSliderColor(Landroid/content/Context;Landroid/support/v7/app/MediaRouteVolumeSlider;Landroid/view/View;)V

    .line 1314
    invoke-virtual {v2, p1}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setTag(Ljava/lang/Object;)V

    .line 1315
    iget-object p3, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object p3, p3, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSliderMap:Ljava/util/Map;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/lit8 p3, v1, 0x1

    .line 1316
    invoke-virtual {v2, p3}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setHideThumb(Z)V

    .line 1317
    invoke-virtual {v2, v1}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setEnabled(Z)V

    if-eqz v1, :cond_2

    .line 1319
    iget-object p3, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {p3, p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->isVolumeControlAvailable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1320
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setMax(I)V

    .line 1321
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolume()I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setProgress(I)V

    .line 1322
    iget-object p3, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object p3, p3, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeChangeListener:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;

    invoke-virtual {v2, p3}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_1

    :cond_1
    const/16 p3, 0x64

    .line 1324
    invoke-virtual {v2, p3}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setMax(I)V

    .line 1325
    invoke-virtual {v2, p3}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setProgress(I)V

    .line 1326
    invoke-virtual {v2, v0}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setEnabled(Z)V

    .line 1330
    :cond_2
    :goto_1
    sget p3, Landroid/support/v7/mediarouter/R$id;->mr_volume_item_icon:I

    .line 1331
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    const/16 v1, 0xff

    goto :goto_2

    :cond_3
    const/high16 v1, 0x437f0000    # 255.0f

    .line 1332
    iget v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->mDisabledAlpha:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    :goto_2
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1336
    sget p3, Landroid/support/v7/mediarouter/R$id;->volume_item_container:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    .line 1337
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v1, v1, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAnimatingWithBitmap:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x4

    :cond_4
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1341
    iget-object p3, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object p3, p3, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    if-eqz p3, :cond_5

    iget-object p3, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object p3, p3, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1342
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 p3, 0x0

    invoke-direct {p1, p3, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x0

    .line 1343
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p3, 0x1

    .line 1344
    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1345
    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1346
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 1347
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_5
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
