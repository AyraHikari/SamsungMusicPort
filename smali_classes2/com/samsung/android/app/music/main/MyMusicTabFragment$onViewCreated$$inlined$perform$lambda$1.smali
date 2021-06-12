.class final Lcom/samsung/android/app/music/main/MyMusicTabFragment$onViewCreated$$inlined$perform$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/MyMusicTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$onViewCreated$$inlined$perform$lambda$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$onViewCreated$$inlined$perform$lambda$1;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$onViewCreated$$inlined$perform$lambda$1;->c:Landroid/os/Bundle;

    iput-boolean p4, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$onViewCreated$$inlined$perform$lambda$1;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$onViewCreated$$inlined$perform$lambda$1;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/music/util/TabUtils;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method
