.class Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/view/NoNetworkViewController$RetryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$4;->b:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$4;->a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$4;->a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$4;->a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;->a()V

    :cond_0
    if-eqz p1, :cond_1

    .line 179
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$4;->b:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->d(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 180
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$4;->b:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->e(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)V

    .line 181
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$4;->b:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->f(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$4;->b:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->f(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
