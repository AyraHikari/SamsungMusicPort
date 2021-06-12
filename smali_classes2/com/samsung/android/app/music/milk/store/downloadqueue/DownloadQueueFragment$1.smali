.class Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;Landroid/view/View;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$1;->b:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$1;->a:Landroid/view/View;

    return-object v0
.end method
