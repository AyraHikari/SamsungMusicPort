.class public Landroid/support/v7/widget/SeslArrayIndexer;
.super Landroid/support/v7/widget/SeslAbsIndexer;
.source "SourceFile"


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field protected mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslAbsIndexer;-><init>(Ljava/lang/CharSequence;)V

    const-string p2, "SeslArrayIndexer"

    .line 29
    iput-object p2, p0, Landroid/support/v7/widget/SeslArrayIndexer;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 30
    iput-boolean p2, p0, Landroid/support/v7/widget/SeslArrayIndexer;->DEBUG:Z

    .line 50
    iput-object p1, p0, Landroid/support/v7/widget/SeslArrayIndexer;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected getBundle()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getItemAt(I)Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Landroid/support/v7/widget/SeslArrayIndexer;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected getItemCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Landroid/support/v7/widget/SeslArrayIndexer;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected isDataToBeIndexedAvailable()Z
    .locals 1

    .line 85
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslArrayIndexer;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
