.class Landroid/support/design/internal/NavigationMenuPresenter$SubheaderViewHolder;
.super Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubheaderViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2

    .line 311
    sget v0, Landroid/support/design/R$layout;->sesl_navigation_item_subheader:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
