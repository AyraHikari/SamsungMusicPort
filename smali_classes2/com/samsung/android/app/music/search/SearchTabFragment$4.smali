.class Lcom/samsung/android/app/music/search/SearchTabFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 310
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$4;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SearchTabFragment"

    const-string v1, "search view get clicked."

    .line 314
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$4;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/search/SearchTabFragment;Landroid/view/View;)V

    :cond_0
    return-void
.end method
