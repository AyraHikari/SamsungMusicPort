.class Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/view/NoNetworkViewController$RetryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment$2;->a:Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment$2;->a:Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->b()Landroid/support/v4/content/Loader;

    move-result-object v0

    const-string v1, "VerticalTabFragment"

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRetry. byUser - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", loader - "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    instance-of p1, v0, Lcom/samsung/android/app/musiclibrary/ui/Refreshable;

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment$2;->a:Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->a(Z)V

    .line 120
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/Refreshable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/Refreshable;->c()V

    :cond_0
    return-void
.end method
