.class Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 605
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 607
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 608
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
