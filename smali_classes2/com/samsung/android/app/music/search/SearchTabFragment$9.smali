.class Lcom/samsung/android/app/music/search/SearchTabFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Landroid/app/Activity;Landroid/view/View;)V
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

    .line 373
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$9;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/support/v7/widget/PopupMenu;)V
    .locals 1

    .line 376
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$9;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "popup menu dismissed!!"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$9;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->b(Lcom/samsung/android/app/music/search/SearchTabFragment;Z)Z

    return-void
.end method
