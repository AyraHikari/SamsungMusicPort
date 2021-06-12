.class Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;Landroid/os/Looper;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 47
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)V

    .line 50
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->b(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    if-eq p1, v1, :cond_1

    .line 51
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0b0215

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/music/milk/MilkToast;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->c(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Lcom/samsung/android/app/music/view/NoNetworkViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a()V

    :goto_0
    return-void
.end method
