.class final Landroid/support/v7/widget/SeslRecyclerViewFastScroller$5;
.super Landroid/util/IntProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslRecyclerViewFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1716
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Integer;
    .locals 0

    .line 1724
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1716
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$5;->get(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/view/View;I)V
    .locals 0

    .line 1719
    invoke-virtual {p1, p2}, Landroid/view/View;->setRight(I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 1716
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$5;->setValue(Landroid/view/View;I)V

    return-void
.end method
