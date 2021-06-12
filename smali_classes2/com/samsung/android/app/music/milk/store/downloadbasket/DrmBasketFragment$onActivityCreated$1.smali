.class final Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment$onActivityCreated$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment$onActivityCreated$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 3

    const-string v0, "userInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isDrmProductUser()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 26
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment$onActivityCreated$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment$onActivityCreated$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->g()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
