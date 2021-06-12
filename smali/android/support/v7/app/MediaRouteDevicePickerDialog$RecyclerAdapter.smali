.class final Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteDevicePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecyclerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder;,
        Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$HeaderViewHolder;,
        Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecyclerAdapter"


# instance fields
.field private final mDefaultIcon:Landroid/graphics/drawable/Drawable;

.field private final mInflater:Landroid/view/LayoutInflater;

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

.field private final mSpeakerIcon:Landroid/graphics/drawable/Drawable;

.field private final mTvIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Landroid/support/v7/app/MediaRouteDevicePickerDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteDevicePickerDialog;)V
    .locals 1

    .line 302
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->this$0:Landroid/support/v7/app/MediaRouteDevicePickerDialog;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 303
    iget-object v0, p1, Landroid/support/v7/app/MediaRouteDevicePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 304
    iget-object v0, p1, Landroid/support/v7/app/MediaRouteDevicePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouterThemeHelper;->getDefaultDrawableIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 305
    iget-object v0, p1, Landroid/support/v7/app/MediaRouteDevicePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouterThemeHelper;->getTvDrawableIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->mTvIcon:Landroid/graphics/drawable/Drawable;

    .line 306
    iget-object v0, p1, Landroid/support/v7/app/MediaRouteDevicePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouterThemeHelper;->getSpeakerDrawableIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->mSpeakerIcon:Landroid/graphics/drawable/Drawable;

    .line 307
    iget-object p1, p1, Landroid/support/v7/app/MediaRouteDevicePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v7/app/MediaRouterThemeHelper;->getSpeakerGropuIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

    .line 308
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->setItems()V

    return-void
.end method

.method private getDefaultIconDrawable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 398
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getDeviceType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 406
    instance-of p1, p1, Landroid/support/v7/media/MediaRouter$RouteGroup;

    if-eqz p1, :cond_0

    .line 408
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 402
    :pswitch_0
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->mSpeakerIcon:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 400
    :pswitch_1
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->mTvIcon:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 410
    :cond_0
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method getIconDrawable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 380
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getIconUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->this$0:Landroid/support/v7/app/MediaRouteDevicePickerDialog;

    iget-object v1, v1, Landroid/support/v7/app/MediaRouteDevicePickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    .line 384
    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "RecyclerAdapter"

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->getDefaultIconDrawable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;
    .locals 1

    .line 419
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 376
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 415
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;->getType()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 359
    invoke-virtual {p0, p2}, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->getItemViewType(I)I

    move-result v0

    .line 360
    invoke-virtual {p0, p2}, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->getItem(I)Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;

    move-result-object p2

    packed-switch v0, :pswitch_data_0

    const-string p1, "RecyclerAdapter"

    const-string p2, "Cannot bind item to ViewHolder because of wrong view type"

    .line 370
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    :pswitch_0
    check-cast p1, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder;

    invoke-virtual {p1, p2}, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder;->bindRouteView(Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;)V

    goto :goto_0

    .line 364
    :pswitch_1
    check-cast p1, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$HeaderViewHolder;

    invoke-virtual {p1, p2}, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$HeaderViewHolder;->binHeaderView(Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const-string p1, "RecyclerAdapter"

    const-string p2, "Cannot create ViewHolder because of wrong view type"

    .line 352
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 349
    :pswitch_0
    iget-object p2, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/mediarouter/R$layout;->mr_picker_route_item:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 350
    new-instance p2, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder;

    invoke-direct {p2, p0, p1}, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder;-><init>(Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;Landroid/view/View;)V

    return-object p2

    .line 346
    :pswitch_1
    iget-object p2, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/mediarouter/R$layout;->mr_dialog_header_item:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 347
    new-instance p2, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$HeaderViewHolder;

    invoke-direct {p2, p0, p1}, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$HeaderViewHolder;-><init>(Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setItems()V
    .locals 5

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->this$0:Landroid/support/v7/app/MediaRouteDevicePickerDialog;

    iget-object v1, v1, Landroid/support/v7/app/MediaRouteDevicePickerDialog;->mRoutes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 318
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->this$0:Landroid/support/v7/app/MediaRouteDevicePickerDialog;

    iget-object v2, v2, Landroid/support/v7/app/MediaRouteDevicePickerDialog;->mRoutes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 320
    instance-of v3, v2, Landroid/support/v7/media/MediaRouter$RouteGroup;

    if-eqz v3, :cond_0

    .line 321
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->this$0:Landroid/support/v7/app/MediaRouteDevicePickerDialog;

    iget-object v2, v2, Landroid/support/v7/app/MediaRouteDevicePickerDialog;->mRoutes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 327
    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->this$0:Landroid/support/v7/app/MediaRouteDevicePickerDialog;

    iget-object v3, v3, Landroid/support/v7/app/MediaRouteDevicePickerDialog;->mContext:Landroid/content/Context;

    sget v4, Landroid/support/v7/mediarouter/R$string;->mr_dialog_device_header:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;-><init>(Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->this$0:Landroid/support/v7/app/MediaRouteDevicePickerDialog;

    iget-object v1, v1, Landroid/support/v7/app/MediaRouteDevicePickerDialog;->mRoutes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 329
    iget-object v3, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v4, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;

    invoke-direct {v4, p0, v2}, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;-><init>(Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 333
    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->this$0:Landroid/support/v7/app/MediaRouteDevicePickerDialog;

    iget-object v3, v3, Landroid/support/v7/app/MediaRouteDevicePickerDialog;->mContext:Landroid/content/Context;

    sget v4, Landroid/support/v7/mediarouter/R$string;->mr_dialog_route_header:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;-><init>(Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 335
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v3, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;

    invoke-direct {v3, p0, v1}, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;-><init>(Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 337
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method
