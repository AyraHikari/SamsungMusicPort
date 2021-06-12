.class public Landroid/support/v7/app/MediaRouteChooserDialog;
.super Landroid/support/v7/app/AppCompatDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;,
        Landroid/support/v7/app/MediaRouteChooserDialog$MediaRouterCallback;,
        Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;
    }
.end annotation


# static fields
.field static final MSG_UPDATE_ROUTES:I = 0x1

.field static final TAG:Ljava/lang/String; = "MediaRouteChooserDialog"

.field private static final UPDATE_ROUTES_DELAY_MS:J = 0x12cL


# instance fields
.field private mAdapter:Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;

.field private mAttachedToWindow:Z

.field private final mCallback:Landroid/support/v7/app/MediaRouteChooserDialog$MediaRouterCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mLastUpdateTime:J

.field private mListView:Landroid/widget/ListView;

.field private final mRouter:Landroid/support/v7/media/MediaRouter;

.field private mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelector:Landroid/support/v7/media/MediaRouteSelector;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-static {p1, p2, v0}, Landroid/support/v7/app/MediaRouterThemeHelper;->createThemedDialogContext(Landroid/content/Context;IZ)Landroid/content/Context;

    move-result-object p1

    .line 98
    invoke-static {p1}, Landroid/support/v7/app/MediaRouterThemeHelper;->createThemedDialogStyle(Landroid/content/Context;)I

    move-result p2

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 75
    sget-object p1, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 81
    new-instance p1, Landroid/support/v7/app/MediaRouteChooserDialog$1;

    invoke-direct {p1, p0}, Landroid/support/v7/app/MediaRouteChooserDialog$1;-><init>(Landroid/support/v7/app/MediaRouteChooserDialog;)V

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mHandler:Landroid/os/Handler;

    .line 99
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 101
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    .line 102
    new-instance p1, Landroid/support/v7/app/MediaRouteChooserDialog$MediaRouterCallback;

    invoke-direct {p1, p0}, Landroid/support/v7/app/MediaRouteChooserDialog$MediaRouterCallback;-><init>(Landroid/support/v7/app/MediaRouteChooserDialog;)V

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mCallback:Landroid/support/v7/app/MediaRouteChooserDialog$MediaRouterCallback;

    return-void
.end method


# virtual methods
.method public getRouteSelector()Landroid/support/v7/media/MediaRouteSelector;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 112
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 208
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDialog;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    .line 211
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mCallback:Landroid/support/v7/app/MediaRouteChooserDialog$MediaRouterCallback;

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V

    .line 212
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialog;->refreshRoutes()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 183
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 185
    sget p1, Landroid/support/v7/mediarouter/R$layout;->mr_chooser_dialog:I

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteChooserDialog;->setContentView(I)V

    .line 187
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mRoutes:Ljava/util/ArrayList;

    .line 188
    new-instance p1, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mRoutes:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0, v1}, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;-><init>(Landroid/support/v7/app/MediaRouteChooserDialog;Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mAdapter:Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;

    .line 189
    sget p1, Landroid/support/v7/mediarouter/R$id;->mr_chooser_list:I

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    .line 190
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mAdapter:Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mAdapter:Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 192
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 193
    sget p1, Landroid/support/v7/mediarouter/R$id;->mr_chooser_title:I

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mTitleView:Landroid/widget/TextView;

    .line 195
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialog;->updateLayout()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    .line 218
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mCallback:Landroid/support/v7/app/MediaRouteChooserDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 219
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 221
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDialog;->onDetachedFromWindow()V

    return-void
.end method

.method public onFilterRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 1
    .param p1    # Landroid/support/v7/media/MediaRouter$RouteInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 167
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 168
    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onFilterRoutes(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;)V"
        }
    .end annotation

    .line 148
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    .line 149
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteChooserDialog;->onFilterRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public refreshRoutes()V
    .locals 7

    .line 228
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 230
    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteChooserDialog;->onFilterRoutes(Ljava/util/List;)V

    .line 231
    sget-object v1, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->sInstance:Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mLastUpdateTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 233
    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteChooserDialog;->updateRoutes(Ljava/util/List;)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-wide v5, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mLastUpdateTime:J

    add-long/2addr v5, v3

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V
    .locals 3
    .param p1    # Landroid/support/v7/media/MediaRouteSelector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    .line 125
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 128
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mCallback:Landroid/support/v7/app/MediaRouteChooserDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 130
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mCallback:Landroid/support/v7/app/MediaRouteChooserDialog$MediaRouterCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V

    .line 134
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialog;->refreshRoutes()V

    :cond_1
    return-void

    .line 122
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTitle(I)V
    .locals 1

    .line 178
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 173
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method updateLayout()V
    .locals 3

    .line 202
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/app/MediaRouteDialogHelper;->getDialogWidth(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method updateRoutes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;)V"
        }
    .end annotation

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mLastUpdateTime:J

    .line 244
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 245
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 246
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog;->mAdapter:Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->notifyDataSetChanged()V

    return-void
.end method
