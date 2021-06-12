.class Lcom/samsung/android/app/music/search/SearchTabFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


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

    .line 342
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$7;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 349
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$7;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->b(Lcom/samsung/android/app/music/search/SearchTabFragment;)Landroid/support/v7/widget/PopupMenu;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 351
    invoke-virtual {p1}, Landroid/support/v7/widget/PopupMenu;->dismiss()V

    :cond_0
    return-void
.end method
