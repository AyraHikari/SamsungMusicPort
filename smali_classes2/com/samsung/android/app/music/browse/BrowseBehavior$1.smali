.class Lcom/samsung/android/app/music/browse/BrowseBehavior$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/BrowseBehavior;-><init>(Landroid/app/Activity;Landroid/support/design/widget/AppBarLayout;Landroid/support/v7/widget/Toolbar;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/samsung/android/app/music/browse/BrowseBehavior;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/BrowseBehavior;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior$1;->c:Lcom/samsung/android/app/music/browse/BrowseBehavior;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior$1;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 7

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior$1;->c:Lcom/samsung/android/app/music/browse/BrowseBehavior;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/BrowseBehavior;->a(Lcom/samsung/android/app/music/browse/BrowseBehavior;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior$1;->c:Lcom/samsung/android/app/music/browse/BrowseBehavior;

    const v0, 0x7f130153

    invoke-virtual {p1, v0}, Landroid/support/design/widget/AppBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior$1;->a:Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior$1;->b:Landroid/view/View;

    move-object v2, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/browse/BrowseBehavior;->a(Lcom/samsung/android/app/music/browse/BrowseBehavior;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    :cond_0
    return-void
.end method
