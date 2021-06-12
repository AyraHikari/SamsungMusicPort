.class final Lcom/samsung/android/app/music/browse/BrowseLauncher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$2;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$2;->b:Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x5a

    .line 259
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$2;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/app/Activity;)V

    .line 260
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$2;->b:Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;

    invoke-interface {p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;->a()V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 256
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$2;->a(Ljava/lang/String;)V

    return-void
.end method
