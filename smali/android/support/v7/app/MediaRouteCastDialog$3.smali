.class Landroid/support/v7/app/MediaRouteCastDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/MediaRouteCastDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteCastDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteCastDialog;)V
    .locals 0

    .line 273
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$3;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 276
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$3;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    iget-object p1, p1, Landroid/support/v7/app/MediaRouteCastDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 277
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$3;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    iget-object p1, p1, Landroid/support/v7/app/MediaRouteCastDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouter;->unselect(I)V

    .line 279
    :cond_0
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$3;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteCastDialog;->dismiss()V

    return-void
.end method
