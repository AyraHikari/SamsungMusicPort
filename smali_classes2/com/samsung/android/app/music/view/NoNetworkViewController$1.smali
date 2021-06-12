.class Lcom/samsung/android/app/music/view/NoNetworkViewController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/view/NoNetworkViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/view/NoNetworkViewController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/view/NoNetworkViewController;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$1;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/music/network/NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "NoNetworkViewController"

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkStateChanged. enable auto refresh - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$1;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    .line 178
    invoke-static {v2}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a(Lcom/samsung/android/app/music/view/NoNetworkViewController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$1;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a(Lcom/samsung/android/app/music/view/NoNetworkViewController;Lcom/samsung/android/app/music/network/NetworkInfo;Z)V

    return-void
.end method
