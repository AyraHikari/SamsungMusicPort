.class public final Landroid/support/v7/media/MediaRouteSelector$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mControlCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/media/MediaRouteSelector;)V
    .locals 1
    .param p1    # Landroid/support/v7/media/MediaRouteSelector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 231
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    .line 232
    iget-object v0, p1, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteSelector$Builder;->mControlCategories:Ljava/util/ArrayList;

    :cond_0
    return-void

    .line 228
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addControlCategories(Ljava/util/Collection;)Landroid/support/v7/media/MediaRouteSelector$Builder;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/support/v7/media/MediaRouteSelector$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 272
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 274
    invoke-virtual {p0, v0}, Landroid/support/v7/media/MediaRouteSelector$Builder;->addControlCategory(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteSelector$Builder;

    goto :goto_0

    :cond_0
    return-object p0

    .line 269
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "categories must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addControlCategory(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteSelector$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_2

    .line 250
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector$Builder;->mControlCategories:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteSelector$Builder;->mControlCategories:Ljava/util/ArrayList;

    .line 253
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector$Builder;->mControlCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector$Builder;->mControlCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    .line 247
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "category must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addSelector(Landroid/support/v7/media/MediaRouteSelector;)Landroid/support/v7/media/MediaRouteSelector$Builder;
    .locals 1
    .param p1    # Landroid/support/v7/media/MediaRouteSelector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    .line 292
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteSelector;->getControlCategories()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/media/MediaRouteSelector$Builder;->addControlCategories(Ljava/util/Collection;)Landroid/support/v7/media/MediaRouteSelector$Builder;

    return-object p0

    .line 289
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Landroid/support/v7/media/MediaRouteSelector;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 301
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector$Builder;->mControlCategories:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 302
    sget-object v0, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    return-object v0

    .line 304
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "controlCategories"

    .line 305
    iget-object v2, p0, Landroid/support/v7/media/MediaRouteSelector$Builder;->mControlCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 306
    new-instance v1, Landroid/support/v7/media/MediaRouteSelector;

    iget-object v2, p0, Landroid/support/v7/media/MediaRouteSelector$Builder;->mControlCategories:Ljava/util/ArrayList;

    invoke-direct {v1, v0, v2}, Landroid/support/v7/media/MediaRouteSelector;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    return-object v1
.end method
