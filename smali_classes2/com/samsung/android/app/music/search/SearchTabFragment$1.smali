.class Lcom/samsung/android/app/music/search/SearchTabFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/search/SearchTabFragment;
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

    .line 106
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$1;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 109
    iget-object p2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$1;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/search/SearchTabFragment;->isFragmentVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x3e

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
