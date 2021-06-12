.class Lcom/samsung/android/app/music/list/local/QueueFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/QueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/QueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/QueueFragment;)V
    .locals 0

    .line 762
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$10;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "my_music_mode_option"

    .line 765
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 766
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$10;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/list/local/QueueFragment;->g(Lcom/samsung/android/app/music/list/local/QueueFragment;Z)Z

    .line 767
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$10;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$10;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/local/QueueFragment;->f()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->a(Z)V

    :cond_0
    return-void
.end method
