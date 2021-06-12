.class final Lcom/samsung/android/app/music/browse/BrowseLauncher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Z)Lio/reactivex/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/samsung/android/app/music/model/UserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$1;->a:Landroid/support/v4/app/FragmentActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$1;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isAccountSignedIn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$1;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$1;->b:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$1;->c:Z

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/content/Context;Ljava/lang/String;ZI)Z

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$1;->a:Landroid/support/v4/app/FragmentActivity;

    const v0, 0x7f0b00b0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    check-cast p1, Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$1;->a(Lcom/samsung/android/app/music/model/UserInfo;)V

    return-void
.end method
