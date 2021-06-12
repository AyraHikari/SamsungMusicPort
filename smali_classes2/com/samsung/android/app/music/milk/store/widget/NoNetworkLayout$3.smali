.class Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;Landroid/view/View;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$3;->b:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$3;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$3;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$3;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$3;->b:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->b(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$3;->b:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    return-object v0
.end method
