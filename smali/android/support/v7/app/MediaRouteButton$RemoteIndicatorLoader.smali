.class final Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteIndicatorLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final mResId:I

.field final synthetic this$0:Landroid/support/v7/app/MediaRouteButton;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteButton;I)V
    .locals 0

    .line 588
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 589
    iput p2, p0, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->mResId:I

    return-void
.end method

.method private cacheAndReset(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 610
    sget-object v0, Landroid/support/v7/app/MediaRouteButton;->sRemoteIndicatorCache:Landroid/util/SparseArray;

    iget v1, p0, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->mResId:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 612
    :cond_0
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->this$0:Landroid/support/v7/app/MediaRouteButton;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicatorLoader:Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 594
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->mResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 585
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 605
    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->cacheAndReset(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 585
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->onCancelled(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 599
    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->cacheAndReset(Landroid/graphics/drawable/Drawable;)V

    .line 600
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/MediaRouteButton;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 585
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
