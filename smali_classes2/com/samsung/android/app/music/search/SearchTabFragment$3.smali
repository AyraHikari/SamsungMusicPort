.class Lcom/samsung/android/app/music/search/SearchTabFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Landroid/support/v7/app/AppCompatActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/search/SearchTabFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/search/SearchTabFragment;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$3;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 301
    iget-object p2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$3;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/search/SearchTabFragment;->isDetached()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "SearchTabFragment"

    const-string v0, "search view get focus."

    .line 302
    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object p2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$3;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/search/SearchTabFragment;Z)Z

    .line 304
    iget-object p2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$3;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/search/SearchTabFragment;Landroid/view/View;)V

    goto :goto_0

    .line 306
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$3;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/search/SearchTabFragment;Z)Z

    :goto_0
    return-void
.end method
