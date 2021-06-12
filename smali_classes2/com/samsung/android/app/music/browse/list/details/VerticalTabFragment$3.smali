.class Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;Landroid/view/View;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment$3;->b:Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment$3;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment$3;->b:Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->b(Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment$3;->b:Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->a(Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;)Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;->a()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment$3;->a:Landroid/view/View;

    return-object v0
.end method
