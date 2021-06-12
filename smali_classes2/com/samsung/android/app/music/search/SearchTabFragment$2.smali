.class Lcom/samsung/android/app/music/search/SearchTabFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/search/SearchTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 170
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$2;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$2;->a:Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/search/SearchTabFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->c()V

    return-void
.end method
