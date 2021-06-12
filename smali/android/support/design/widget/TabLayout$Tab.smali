.class public final Landroid/support/design/widget/TabLayout$Tab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field mParent:Landroid/support/design/widget/TabLayout;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field mView:Landroid/support/design/widget/TabLayout$TabView;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1459
    iput v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/TabLayout$Tab;)Ljava/lang/CharSequence;
    .locals 0

    .line 1446
    iget-object p0, p0, Landroid/support/design/widget/TabLayout$Tab;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$002(Landroid/support/design/widget/TabLayout$Tab;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 1446
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->mText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$100(Landroid/support/design/widget/TabLayout$Tab;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1446
    iget-object p0, p0, Landroid/support/design/widget/TabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$102(Landroid/support/design/widget/TabLayout$Tab;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1446
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$200(Landroid/support/design/widget/TabLayout$Tab;)Landroid/view/View;
    .locals 0

    .line 1446
    iget-object p0, p0, Landroid/support/design/widget/TabLayout$Tab;->mCustomView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$202(Landroid/support/design/widget/TabLayout$Tab;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1446
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->mCustomView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Landroid/support/design/widget/TabLayout$Tab;)I
    .locals 0

    .line 1446
    iget p0, p0, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    return p0
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1708
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1498
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1563
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1573
    iget v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1474
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1587
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isSelected()Z
    .locals 2

    .line 1660
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_1

    .line 1663
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1661
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x0

    .line 1718
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    .line 1719
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    .line 1720
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mTag:Ljava/lang/Object;

    .line 1721
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1722
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mText:Ljava/lang/CharSequence;

    .line 1723
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    .line 1724
    iput v1, p0, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    .line 1725
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mCustomView:Landroid/view/View;

    return-void
.end method

.method public select()V
    .locals 2

    .line 1650
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_0

    .line 1653
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;)V

    return-void

    .line 1651
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seslGetTextView()Landroid/widget/TextView;
    .locals 1

    .line 1503
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout$TabView;->access$500(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setContentDescription(I)Landroid/support/design/widget/TabLayout$Tab;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1677
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_0

    .line 1680
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p1

    return-object p1

    .line 1678
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1694
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    .line 1695
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public setCustomView(I)Landroid/support/design/widget/TabLayout$Tab;
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1552
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1553
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1527
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout$TabView;->access$500(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1528
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$TabView;->removeAllViews()V

    .line 1532
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->mCustomView:Landroid/view/View;

    .line 1533
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public setIcon(I)Landroid/support/design/widget/TabLayout$Tab;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1611
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_0

    .line 1614
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p1

    return-object p1

    .line 1612
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1598
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1599
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method setPosition(I)V
    .locals 0

    .line 1577
    iput p1, p0, Landroid/support/design/widget/TabLayout$Tab;->mPosition:I

    return-void
.end method

.method public setTag(Ljava/lang/Object;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1485
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public setText(I)Landroid/support/design/widget/TabLayout$Tab;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1640
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p1

    return-object p1

    .line 1641
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1626
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$Tab;->mText:Ljava/lang/CharSequence;

    .line 1627
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method updateView()V
    .locals 1

    .line 1712
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v0, :cond_0

    .line 1713
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$TabView;->update()V

    :cond_0
    return-void
.end method
