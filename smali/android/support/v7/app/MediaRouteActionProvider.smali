.class public Landroid/support/v7/app/MediaRouteActionProvider;
.super Landroid/support/v4/view/ActionProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/MediaRouteActionProvider$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaRouteActionProvider"


# instance fields
.field private mButton:Landroid/support/v7/app/MediaRouteButton;

.field private final mCallback:Landroid/support/v7/app/MediaRouteActionProvider$MediaRouterCallback;

.field private mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

.field private final mRouter:Landroid/support/v7/media/MediaRouter;

.field private mSelector:Landroid/support/v7/media/MediaRouteSelector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 147
    invoke-direct {p0, p1}, Landroid/support/v4/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 137
    sget-object v0, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 138
    invoke-static {}, Landroid/support/v7/app/MediaRouteDialogFactory;->getDefault()Landroid/support/v7/app/MediaRouteDialogFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    .line 149
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mRouter:Landroid/support/v7/media/MediaRouter;

    .line 150
    new-instance p1, Landroid/support/v7/app/MediaRouteActionProvider$MediaRouterCallback;

    invoke-direct {p1, p0}, Landroid/support/v7/app/MediaRouteActionProvider$MediaRouterCallback;-><init>(Landroid/support/v7/app/MediaRouteActionProvider;)V

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mCallback:Landroid/support/v7/app/MediaRouteActionProvider$MediaRouterCallback;

    return-void
.end method


# virtual methods
.method public getDialogFactory()Landroid/support/v7/app/MediaRouteDialogFactory;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 206
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    return-object v0
.end method

.method public getMediaRouteButton()Landroid/support/v7/app/MediaRouteButton;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 234
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mButton:Landroid/support/v7/app/MediaRouteButton;

    return-object v0
.end method

.method public getRouteSelector()Landroid/support/v7/media/MediaRouteSelector;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 161
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    return-object v0
.end method

.method public isVisible()Z
    .locals 3

    .line 281
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/media/MediaRouter;->isRouteAvailable(Landroid/support/v7/media/MediaRouteSelector;I)Z

    move-result v0

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 4

    .line 250
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mButton:Landroid/support/v7/app/MediaRouteButton;

    if-eqz v0, :cond_0

    const-string v0, "MediaRouteActionProvider"

    const-string v1, "onCreateActionView: this ActionProvider is already associated with a menu item. Don\'t reuse MediaRouteActionProvider instances! Abandoning the old menu item..."

    .line 251
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteActionProvider;->onCreateMediaRouteButton()Landroid/support/v7/app/MediaRouteButton;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mButton:Landroid/support/v7/app/MediaRouteButton;

    .line 257
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mButton:Landroid/support/v7/app/MediaRouteButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteButton;->setCheatSheetEnabled(Z)V

    .line 258
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mButton:Landroid/support/v7/app/MediaRouteButton;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteButton;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    .line 259
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mButton:Landroid/support/v7/app/MediaRouteButton;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteButton;->setDialogFactory(Landroid/support/v7/app/MediaRouteDialogFactory;)V

    .line 260
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mButton:Landroid/support/v7/app/MediaRouteButton;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mButton:Landroid/support/v7/app/MediaRouteButton;

    return-object v0
.end method

.method public onCreateMediaRouteButton()Landroid/support/v7/app/MediaRouteButton;
    .locals 2

    .line 244
    new-instance v0, Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteActionProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/MediaRouteButton;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    .line 268
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mButton:Landroid/support/v7/app/MediaRouteButton;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mButton:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteButton;->showDialog()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public overridesItemVisibility()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method refreshRoute()V
    .locals 0

    .line 286
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteActionProvider;->refreshVisibility()V

    return-void
.end method

.method public setDialogFactory(Landroid/support/v7/app/MediaRouteDialogFactory;)V
    .locals 1
    .param p1    # Landroid/support/v7/app/MediaRouteDialogFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 220
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    if-eq v0, p1, :cond_0

    .line 221
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    .line 223
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mButton:Landroid/support/v7/app/MediaRouteButton;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mButton:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/MediaRouteButton;->setDialogFactory(Landroid/support/v7/app/MediaRouteDialogFactory;)V

    :cond_0
    return-void

    .line 217
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "factory must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V
    .locals 2
    .param p1    # Landroid/support/v7/media/MediaRouteSelector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_3

    .line 175
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 183
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mCallback:Landroid/support/v7/app/MediaRouteActionProvider$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mCallback:Landroid/support/v7/app/MediaRouteActionProvider$MediaRouterCallback;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 189
    :cond_1
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 190
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteActionProvider;->refreshRoute()V

    .line 192
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mButton:Landroid/support/v7/app/MediaRouteButton;

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider;->mButton:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/MediaRouteButton;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    :cond_2
    return-void

    .line 172
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
